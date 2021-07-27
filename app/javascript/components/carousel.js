const setCarousel = () => {
  const thumbnails = document.querySelectorAll(".item");
  console.log(thumbnails)
  const showCard = document.querySelector(".show-card");
  thumbnails.forEach((thumbnail) => {
    thumbnail.addEventListener("click", (e) => {
      console.log(e)
      console.log(showCard)
      const picture_src = e.currentTarget.childNodes[1].src;
      showCard.style.backgroundImage = `url(${picture_src})`;
    })
  })
}

export { setCarousel };