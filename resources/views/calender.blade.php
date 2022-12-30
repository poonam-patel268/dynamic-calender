<html>
<form action="{{ route('calender.store') }}" method="post">
    {{ csrf_field() }}
    Working days:
    <br />
    <input type="text" name="no_of_working_days" value=""/>
    <br /><br />
    No of subjects per day:
    <br />
    <input type="text" name="no_of_subjects_per_day" value=""/>
    <br /><br />
        @php
            $subjects = \App\Models\Subjects::all();
        @endphp

        @foreach($subjects as $subject)
            <input
                type="checkbox"
                id="{{$subject->id}}"
                name="subjects[]"
                value="{{$subject->id}}" />
            <label for="{{$subject->id}}">{{$subject->name}}</label>
        @endforeach
    <br>
    <button type="submit" name="submitme">Submit</button>
</form>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $('#add-botton').click(function(){

            var $div = $('div[id^="trace-div"]:last');
            var num = parseInt( $div.prop("id").match(/\d+/g), 10 ) +1;
            var $trace1div = $div.clone(true).prop('id', 'trace-div'+num );

            $trace1div.find('span').text('Trace ' + num);
            $trace1div.find("input[name='subject']").attr("id", "subject").val("");
            $trace1div.find("input[name='hour']").attr("id", "hour").val("");
            $div.after( $trace1div);

            // console.log( 'last t_y_axis => ' , $div.find('.t_y_axis').val());
            // console.log( 'last t_x_axis => ' , $div.find('.t_x_axis').val());

        });
    });
</script>

</html>
