<?php

namespace App\Imports;

use App\Models\Offorder;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Database\QueryException;

class ImportException extends \Exception {}

class OfforderImport implements ToCollection
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $rows)
    {
        // Skip the first row (header row)
        $rows->shift();

        $existingPartNumbers = Offorder::whereIn('wompart_num', $rows->pluck(2))->pluck('wompart_num')->toArray();
        // dd($existingPartNumbers);

        // Check if any part numbers already exist in the database
        if (!empty($existingPartNumbers)) {
            // Some part numbers already exist, throw an exception
            throw new ImportException('Some Part numbers already exist in the database: ' . implode(', ', $existingPartNumbers));
        }

        // Process each row
        foreach ($rows as $row) {
            try {
                // Attempt to create a new instance of Inventorys
                Offorder::updateOrInsert(
                    ['wompart_num' => $row[1]],
                    [
                        'category'       => $row[2],
                        'quantity'       => $row[3],
                        'status'         => $row[4],
                        'created_at'     => now()->format('Y-m-d H:i:s'),
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
