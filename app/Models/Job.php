<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;
    protected $fillable = [
        'title', 'slug', 'status', 'position', 'location',
        'department', 'employment_type', 'description',
        'responsibilities', 'requirements', 'how_to_apply'
    ];

    public function getRouteKeyName()
{
    return 'slug';
}
}
