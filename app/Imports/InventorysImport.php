<?php

namespace App\Imports;

use App\Models\Inventorys;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Database\QueryException;

class ImportException extends \Exception {}

class InventorysImport implements ToCollection
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $rows)
    {
        // Skip the first row (header row)
        $rows->shift();

        $existingPartNumbers = Inventorys::whereIn('wompart_num', $rows->pluck(2))->pluck('wompart_num')->toArray();
        // dd($existingPartNumbers);

        // Check if any part numbers already exist in the database
        if (!empty($existingPartNumbers)) {
            // Some part numbers already exist, throw an exception
            throw new ImportException('Some part numbers already exist in the database: ' . implode(', ', $existingPartNumbers));
        }

        // Process each row
        foreach ($rows as $row) {
            try {
                // Attempt to create a new instance of Inventorys
                Inventorys::updateOrInsert(
                    ['wompart_num' => $row[2]],
                    [
                        'quantity'       => $row[1],
                        'wom_description' => $row[3],
                        'wom_po'         => $row[4],
                        'category_name'  => $row[5],
                        'where_used'     => $row[11],
                        'location'       => $row[12],
                        // Add more columns as needed
                    ]
                );
            } catch (QueryException $e) {
                // Handle other database errors
                \Log::error($e->getMessage());
            }
        }

        // If you reach this point, the import was successful
    }
}
