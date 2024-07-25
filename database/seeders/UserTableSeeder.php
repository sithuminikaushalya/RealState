<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([

            //admin
            [
                'name' => 'Admin',
                'username' => 'admin',
                'email' => 'admin@gmail.com',
                'password' => Hash::make('admin'),
                'role' => 'admin',
                'status' => 'active',
            ],

            // member
            [
                'name' => 'Member',
                'username' => 'member',
                'email' => 'member@gmail.com',
                'password' => Hash::make('member'),
                'role' => 'user',
                'status' => 'active',
            ],

            // user
            [
                'name' => 'Staff',
                'username' => 'staff',
                'email' => 'staff@gmail.com',
                'password' => Hash::make('staff'),
                'role' => 'agent',
                'status' => 'active',
            ],
        ]);
    }
}
