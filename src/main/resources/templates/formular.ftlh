[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<div class="container">
    <form class="tabor" action="" method="post">
        <h1>Přihláška na tábor</h1>

        <label for="jmeno" class="radek">Jméno:</label>
        [@spring.formInput path="form.jmeno" attributes="${rekapitulace?then('readonly','')}"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="prijmeni" class="radek">Příjmení:</label>
        [@spring.formInput path="form.prijmeni"attributes="${rekapitulace?then('readonly','')}" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="datumNarozeni" class="radek">Datum Narozeni:</label>
        [@spring.formInput path="form.datumNarozeni" fieldType="date" attributes="${rekapitulace?then('readonly','')}"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="pohlavi" class="radek">Pohlaví:</label>
        [@spring.formSingleSelect path="form.pohlavi" attributes="${rekapitulace?then('disabled','')}" options={
        "": "",
        "1": "Holka",
        "2": "Kluk",
        "3": "Kdoví"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Turnus:</div>
        [@spring.formRadioButtons path="form.turnus" attributes="${rekapitulace?then('disabled','')}" options={
        "turnus1": "5.-11. července",
        "turnus2": "12.-18. července",
        "turnus3": "19.-25. července"
        } separator="<br>" /]

        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="email" class="radek">E-mail na rodiče:</label>
        [@spring.formInput path="form.email"attributes="${rekapitulace?then('readonly','')}" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.obchodniPodminky" attributes="${rekapitulace?then('disabled','')}" /]
            <label for="obchodniPodminky">Souhlasím, že dítě se účastní na vlastní nebezpečí.</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.ztraty" attributes="${rekapitulace?then('disabled','')}"/]
            <label for="newsletter">Souhlasím, že případné ztráty dětí jsou akceptovány.</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Rezervovat</button>
        </div>
    </form>
</div>
</body>
</html>
