@import java.util.List

@param String name
@param int age
@param boolean isLoggedIn
@param List<String> fruits

<!DOCTYPE html>
<html>
<head><title>Lab 1 - JTE</title></head>
<body>

<h2>Displaying data</h2>
<p>Name: ${name}, Age: ${age}</p>

<h2>If Statement</h2>
@if(isLoggedIn)
    <p>You're logged in ✅</p>
@else
    <p>You're not logged in ❌</p>
@endif

<h2>Loops</h2>
<ul>
    @for(String fruit : fruits)
        <li>${fruit}</li>
    @endfor
</ul>


<h2>Template Call (default param)</h2>
@template.components.greeting()

<h2>Template Call (named params + varargs)</h2>
@template.components.greeting(username = name, hobbies = new String[]{"Reading", "Programming", "Sport"})

<%-- i. Content --%>
<h2>Content</h2>
<p>${"This is content via inline expression: " + name}</p>

<%-- j. Variables --%>
<h2>Variables</h2>
!{int doubled = age * 2;}
<p>Doubled age: ${doubled}</p>

</body>
</html>