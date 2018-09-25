<?php 
namespace App\Traits;
use App\User;


trait RunningNumberTrait
{
	public function generateNewMemberId()
	{
		$user = User::latest()->first();
		$numString 		= $user->member_id;
		$nextNumber 	= $numString + 1;
		$newMemberId 	= str_pad($nextNumber, 6, "0", STR_PAD_LEFT);

		return $newMemberId;
	}
}