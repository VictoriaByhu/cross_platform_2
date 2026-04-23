@param String username = "Guest"
@param String... hobbies

<div>
    <p>Hello, ${username}!</p>

    @if(hobbies.length > 0)
        <p>Your hobbies:</p>
        <ul>
            @for(String hobby : hobbies)
                <li>${hobby}</li>
            @endfor
        </ul>
    @endif
</div>