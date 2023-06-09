<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'first_name'                => 'required|string|max:20',
            'last_name'                 => 'required|string|max:20',
            'phone'                     => 'required|string|max:20|unique:users,phone',
            'email'                     => 'required|string|max:255|email|unique:users,email',
            'password_confirmation'     => 'required',
            'password'                  => 'required|same:password_confirmation',
            'department_id'             => 'required|numeric',
            'designation_id'            => 'required|numeric',
            'gender'                    => 'required|numeric',
            'status'                    => 'required|numeric',
            'date_of_joining'           => 'required',
            'about'                     => 'nullable|max:255',
            'image'                     => 'image|mimes:jpeg,png,jpg|max:5098',
        ];
    }
}
