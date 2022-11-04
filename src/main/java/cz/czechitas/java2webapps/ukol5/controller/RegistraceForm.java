package cz.czechitas.java2webapps.ukol5.controller;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.Period;

public class RegistraceForm {
    @NotBlank
    public String jmeno;
    @NotBlank
    public String prijmeni;
    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public LocalDate datumNarozeni;
    @NotNull
    public String pohlavi;
    @NotNull
    public String turnus;

    public LocalDate vek;
    @Email
    @NotNull
    public String email;
    @AssertTrue
    public boolean obchodniPodminky;
    public boolean ztraty;

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni= datumNarozeni;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public boolean isObchodniPodminky() {
        return obchodniPodminky;
    }

    public void setObchodniPodminky(boolean obchodniPodminky) {
        this.obchodniPodminky = obchodniPodminky;
    }

    public boolean isZtraty() {
        return ztraty;
    }

    public void setZtraty(boolean ztraty) {
        this.ztraty = ztraty;
    }

    public String getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(String pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getVek() {
        Period period = datumNarozeni.until(LocalDate.now());
        int vek = period.getYears();
        return vek;
    }

}


