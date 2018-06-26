<?php namespace App\Traits;

trait UserDashboard
{
    public function printThis()
    {
        echo "Trait executed";
        dd($this);
    }

    public function anotherMethod()
    {
        echo "Trait – anotherMethod() executed";
    }
}