const filterPets = () => {
  const filters = document.querySelectorAll(".pet-filter");
  const petCards = document.querySelectorAll(".pet-card");
  const headerPetsAll = document.getElementById("filter")

  filters.forEach((filter) => {
    filter.addEventListener("click", (e) => {
      petCards.forEach((petCard) => {
        petCard.hidden = true;
        if (petCard.dataset.species === e.currentTarget.id) {
          headerPetsAll.innerText = e.currentTarget.id[0].toUpperCase() + e.currentTarget.id.substring(1)
          petCard.hidden = false;
        } else if (e.currentTarget.id === "others" && !["dog", "cat", "rabbit"].includes(petCard.dataset.species)) {
          petCard.hidden = false;
          headerPetsAll.innerText = "Others"
        } else if (e.currentTarget.id === "all") {
          petCard.hidden = false;
          headerPetsAll.innerText = "All pets"
        }
      })
    })
  })
}

export { filterPets };