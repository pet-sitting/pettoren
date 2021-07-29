const setCarousel = () => {
  const thumbnails = document.querySelectorAll(".item");
  const showCard = document.querySelector(".show-card");
  thumbnails.forEach((thumbnail) => {
    thumbnail.addEventListener("click", (e) => {
      if (showCard !== null) {
        const picture_src = e.currentTarget.childNodes[1].src;
        showCard.style.backgroundImage = `url(${picture_src})`;
      }
    })
  })
}

export { setCarousel };