const fetchStudents = async () => {
  const response = await fetch("http://localhost:4000/students");
  const data = await response.json();

  let tableB = document.getElementById("tableBody"); // selektuje table body

  console.log(data);

  data.forEach((student) => {
    let row = `
    <tr>
        <td>${student.name}</td>
        <td>${student.lastName}</td>
        <td>${student.age}</td>
        <td>${student.city}</td>
    </tr>`;

    tableB.innerHTML += row;
  });
};

//json-server --watch db.json --port 4000 u terminalu 

const postStudents = async () => {
  //preuzimanje podataka iz input polja
    const data = {
      id:  Math.random(),
      name: document.getElementById("nameInput").value,
      lastName: document.getElementById("lastNameInput").value,
      city: document.getElementById("cityInput").value,
      age: document.getElementById("ageInput").value
    }

    // kod za slanje podataka na server
    try{
      const response = await fetch ("http://localhost:4000/students", {
        method: "POST",
        body: JSON.stringify(data),
        headers: {
          "Content-Type" : "application/json"
        }

      })

      const responseJSON = await response.json()
      console.log("responseJSON", responseJSON)
    }catch(err){
      console.log(err)

    }

      console.log(data)
}




fetchStudents();
