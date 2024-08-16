<?php

namespace App\Exports;
use App\Models\Offinventorys;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class OffinventorysExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Offinventorys::all();
    }
    public function headings(): array
    {
        // Customize the headers based on your database fields
        return [
            'ID',
            'WOM Part Number',
            'Quantity',
            'WOM Description',
            'WOM PO#',
            'Category',
            'WOM Serial',
            'Durometer',
            'Compound',
            'Cure Date',
            'Expiration Date',
            'Where used',
            'Location',
            'Created at',
            'Updated at'
            // Add more headers as needed
        ];
    }

}
