<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubjectPerDay extends Model
{
    use HasFactory;

    public function subjects(){
        return $this->belongsTo(Subjects::class,'subject_id','id');
    }

}
