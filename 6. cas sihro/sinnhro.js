
/*

 console.log("Prvi log")

//asinhrona funkcija
setTimeout(() => {
    console.log("Drugi log")
}, 2000);


console.log("Treći log")
*/

/*
const prvaF = function(){
    console.log("prva")
}

const drugaF  = function (){
    setTimeout (() => {
        console.log("druga");
    }, 2000)}

const trecaF = function () {
    console.log("treća");
}

prvaF()
drugaF()
trecaF()
*/

/*
const prvaF = function(){
    console.log("prva")
}

const drugaF  = function (callbackFa){
    setTimeout (() => {
        console.log("druga");
        callbackFa()
    }, 2000)}

const trecaF = function () {
    console.log("treća");
}

prvaF()
drugaF(trecaF) ///rez prva, druga, treca funkcija zato sto smo trecu stavili u drugoj funkciji kroz callbackFa
               /// ali nije dobro rjesenje zbog callback hell-a

*/

/////// PROMISE

/*
let promise1 = new Promise((resolve, reject) => {
    let bodovi = 56 
    if (bodovi>50){
        resolve("Student je poloziio")
    }else{
        reject ("Student nije polozio!")
    }

})

promise1
.then((res)=>console.log(res)) // ako je sve ok, RESOLVE
.catch(err=>console.log(err)) //ako nesto nije ok, REJECT
*/


/*
fetch('https://jsonplaceholder.typicode.com/users') //fetch sa servera
      .then(data => data.json()) //ako dobijemo podatke, pretvori ih u js-objekte
      .then(newData => console.log(newData)) //prikazi u konzoli korisnike
      .catch(err=>console.log(err)) //prikazi u konzole gresku
*/

