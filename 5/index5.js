/*
const auto = {
    marka: "Volvo",
    brojVrata: 4,
    //kubikaza: 2500,
    tip: "limuzina",

    sviraj: function(){
        console.log("beep beep")
    },
    kreni: function(){

    //console.log("Automobil kreće....");
    }

}
*/

// printanje objekta u konzoli

//console.log(auto)
//console.log("Kubikaža auta je ", auto.kubikaza)


//ne koristiti arrow funckije u objektima
/*
const prvojervaKlase = (automobil) => {
    if (!automobil.kubikaza) return "Automobil nema kubikazu"
    if(automobil.kubikaza>2200) return "Luksuzna klasa"
    return "Standardna klasa"

}

console.log("Provjera kubikaze: ", prvojervaKlase(auto))
*/

///////////////////////////////////////////////////////////////
//KLASE

/*
class Animal {
    constructor(breed, hair, numOfLegs){
        this.breed = breed
        this.hair = hair
        this.numOfLegs = numOfLegs

    }

    makeSound (sound){
        console.log(this.breed, "makes ", sound, "sound!")

    }
}

const dog = new Animal("husky", true, 4)
const cat = new Animal ("persian", true, 4)


console.log("Naš cuko: ", dog)
console.log("Naša maca: ", cat)

dog.makeSound("bark") //husky makes bark sound
*/

////////////////////////

/*
const user1 = {

    name: "Petar",
    age: 25

}

const user2 = {
    name: "Petar",
    age : 25
}

const user3 = user2

//console.log("Da li su isti objekti: ",  user3 == user2);

console.log(user2)
console.log(user3)
*/
//////////////////////////


/*
const auto = {
    tip: "mercedes", 
    osiguranje: {
        datumIsteka: "1.1.2024",
        polisa: "premium",
        iznos: 10000
    },
    godiste: 2012,
    prethodniVlasnici: ["Petar", "Milan", "Marko", "Ognjen"]

}

console.log("Posljedni vlasnik: ", auto.prethodniVlasnici[auto.prethodniVlasnici.length-1])

//izmjena polise na standard
console.log("Stari", auto);
console.log("Stari", auto.osiguranje.polisa);

auto.osiguranje.polisa = "standard"

console.log("Novi ", auto)
console.log("novi polisa", auto.osiguranje.polisa)
*/