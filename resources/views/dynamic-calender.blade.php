<html>
<table>
    <thead>

    </thead>
    <tbody>
    @for($i=0; $i < $calender->no_of_subjects_per_day ; $i++)
        <tr>
            @for($j = 0;$j<$calender->no_of_working_days;$j++)
                <td>
                   {{$subjectsPerDay[$i]->subjects->name}}
                </td>
            @endfor
        </tr>
    @endfor
    </tbody>
</table>
</html>

