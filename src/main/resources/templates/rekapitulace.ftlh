[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="container">
    <form class="tabor" action="" method="post">
        <h1>Přihláška na tábor</h1>

        <label for="jmeno" class="radek">Jméno:</label>
        [@spring.formInput path="form.jmeno" attributes="readonly"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="prijmeni" class="radek">Příjmení:</label>
        [@spring.formInput path="form.prijmeni"attributes="readonly" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="datumNarozeni" class="radek">Datum Narozeni:</label>
        [@spring.formInput path="form.datumNarozeni" fieldType="date" attributes="readonly"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="pohlavi" class="radek">Pohlaví:</label>
        [@spring.formSingleSelect path="form.pohlavi" attributes="readonly" options={
        "": "",
        "1": "Holka",
        "2": "Kluk",
        "3": "Kdoví"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Turnus:</div>
        <div class="skupina">
            <div>
                <input readonly id="turnus1" type="radio" name="turnus" value="turnus1" />
                <label for="turnus1" >5.-11. července</label>
            </div>
            <div>
                <input readonly id="turnus2" type="radio" name="turnus" value="turnus2"/>
                <label for="turnus2">12.-18. července</label>
            </div>
            <div>
                <input readonly id="turnus3" type="radio" name="turnus" value="turnus3"/>
                <label for="turnus3">19.-25. července</label>
            </div>
        </div>
        [@spring.bind "form.turnus" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="email" class="radek">E-mail na rodiče:</label>
        [@spring.formInput path="form.email"attributes="readonly" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.obchodniPodminky" /]
            <label for="obchodniPodminky">Souhlasím, že dítě se účastní na vlastní nebezpečí.</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.ztraty" /]
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
