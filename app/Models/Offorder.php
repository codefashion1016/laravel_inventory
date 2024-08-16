<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offorder extends Model
{
    use HasFactory;

    protected $fillable = [
        'wompart_num',
        'quantity',
        'category',
        'status',
    ];
}
