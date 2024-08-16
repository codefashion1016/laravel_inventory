<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offinventorys extends Model
{
    use HasFactory;
    protected $fillable = [
        'quantity',
        'wompart_num',
        'wom_description',
        'wom_po',
        'category_name',
        'wom_serial',
        'durometer',
        'compound',
        'cure_date',
        'expiration_date',
        'where_used',
        'location'
       ];
}
