const filterPets = () => {
  const filters = document.querySelectorAll(".pet-filter");
  const petCards = document.querySelectorAll(".pet-card");
  filters.forEach((filter) => {
    filter.addEventListener("click", (e) => {
      console.log(e)
      petCards.forEach((petCard) => {
        petCard.hidden = true;
        if (petCard.dataset.species === e.currentTarget.id) {
          petCard.hidden = false;
        } else if (e.currentTarget.id === "others" && !["dog", "cat", "bird"].includes(petCard.dataset.species)) {
          petCard.hidden = false;
        }
      })
    })
  })
}

export { filterPets };
