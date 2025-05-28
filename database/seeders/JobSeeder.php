<?php

namespace Database\Seeders;

use App\Models\Job;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class JobSeeder extends Seeder
{
    public function run()
    {
        $positions = [
            'Software Engineer', 'Data Scientist', 'Product Manager',
            'UX Designer', 'DevOps Engineer', 'Research Associate',
            'Administrative Assistant', 'Finance Manager', 'HR Specialist'
        ];

        $locations = [
            'Mohali, Punjab', 'Bangalore, Karnataka', 'Remote',
            'Hyderabad, Telangana', 'Mumbai, Maharashtra', 'Delhi'
        ];

        $departments = [
            'Engineering', 'Product', 'Design', 
            'Research', 'Administration', 'Finance', 'HR'
        ];

        $employmentTypes = [
            'Full-time', 'Part-time', 'Contract', 'Internship'
        ];

        for ($i = 1; $i <= 50; $i++) {
            $title = "Job Position {$i}";
            $yearsExperience = $i + 2; // Calculate this separately
            
            Job::create([
                'title' => $title,
                'slug' => Str::slug($title),
                'status' => $i % 5 == 0 ? 'closed' : 'open', // Every 5th job is closed
                'position' => $positions[array_rand($positions)],
                'location' => $locations[array_rand($locations)],
                'department' => $departments[array_rand($departments)],
                'employment_type' => $employmentTypes[array_rand($employmentTypes)],
                'description' => "This is a detailed description for {$title}. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.",
                'responsibilities' => implode("\n", [
                    "- Responsibility 1 for {$title}",
                    "- Responsibility 2 including task management",
                    "- Responsibility 3 for team collaboration",
                    "- Additional duties as assigned"
                ]),
                'requirements' => implode("\n", [
                    "- Bachelor's degree in relevant field",
                    "- ".$yearsExperience." years of professional experience",
                    "- Strong communication skills",
                    "- Ability to work in team environment"
                ]),
                'how_to_apply' => $i % 3 == 0 ? null : "Send your resume to careers@plaksha.edu.in with subject 'Application for {$title}'",
                'created_at' => now()->subDays(rand(1, 60))
            ]);
        }
    }
}