<?php

namespace App\Exports;
use App\Models\Offorder;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class OfforderExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Offorder::all();
    }
    public function headings(): array
    {
        // Customize the headers based on your database fields
        return [
            'ID',
            'WOM Part Number',
            'Category',
            'Quantity',
            'Status',
            'Created at',
            'Updated at'
            // Add more headers as needed
        ];
    }

}
