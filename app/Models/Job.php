<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Job
 *
 * Represents a job posting within the application.
 *
 * @package App\Models
 *
 * @property int $id
 * @property string $title
 * @property string $slug
 * @property string $status
 * @property string $position
 * @property string $location
 * @property string $department
 * @property string $employment_type
 * @property string $description
 * @property string $responsibilities
 * @property string $requirements
 * @property string|null $how_to_apply
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 */
class Job extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'title',
        'slug',
        'status',
        'position',
        'location',
        'department',
        'employment_type',
        'description',
        'responsibilities',
        'requirements',
        'how_to_apply',
    ];

    /**
     * Get the route key name for Laravel route model binding.
     *
     * @return string
     */
    public function getRouteKeyName()
    {
        return 'slug';
    }
}