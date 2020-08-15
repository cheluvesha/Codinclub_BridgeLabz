#!/bin/bash -x
return_value=0
function get_working_hrs() {
        local emp_check=$1
        local full_time=1;
        local part_time=2;
        case $emp_check in
                $full_time)
                        return_value=8
                                        ;;
                $part_time)
                        return_value=4
                                        ;;
                *)
                        return_value=0
                                        ;;
        esac
    return
}
function get_emp_wage() {
        local working_hrs=$1;
        dailywage=$((working_hrs*rate_hor))

echo $dailywage
}
number_of_days=5
rate_hor=20
days=0
total_hrs=0
declare -A daily_salary
while [ $days -lt $number_of_days ]
do
        is_present=$((RANDOM%3))
        get_working_hrs $is_present
        working_hrs=$return_value
        total_hrs=$((total_hrs+working_hrs))
        daily_salary["day $days"]="$( get_emp_wage $working_hrs )"
        ((days++))
done
total_salary=$((total_hrs*rate_hor))
echo $total_salary
for i in "${!daily_salary[@]}"
do
        echo $i"-" ${daily_salary[$i]}
done

