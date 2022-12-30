<?php

namespace Database\Seeders;

use App\Models\Subjects;
use Illuminate\Database\Seeder;

class SubjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $subjects = $this->subjects();

        foreach ($subjects as $subject) {
            $saveSubject = Subjects::whereName($subject['name'])->first();
            if (!$saveSubject) {
                $saveSubject = new Subjects();
            }
            $saveSubject->name = $subject['name'];
            $saveSubject->save();
        }
    }

    public function subjects()
    {

        return [
            [
                'name' => 'Gujarati',
            ],
            [
                'name' => 'English',
            ],
            [
                'name' => 'Hindi',
            ],
            [
                'name' => 'Finnish',
            ],
            [
                'name' => 'Marathi',
            ],
            [
                'name' => 'Tamil',
            ],
        ];


    }
}
