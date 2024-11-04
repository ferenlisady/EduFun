<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Writer extends Model
{
    protected $table = 'writers';
    protected $guarded = [];

    public function courses(){
        return $this->hasMany(Course::class, 'writer_id');
    }
}
