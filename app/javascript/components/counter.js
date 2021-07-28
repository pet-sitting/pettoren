import { CountUp } from 'countup.js';

const counter = () => {
  const userCount = document.getElementById("user-count");
  const petCount = document.getElementById("pet-count");
  const picCount = document.getElementById("pic-count");

  // window.onscroll = function () {
  //   let scrolled = window.pageYOffset || document.documentElement.scrollTop;
  //   if (scrolled >= 750) {
  //     console.log("test1");
  //   }
  // }

  if (userCount !== null && petCount !== null && picCount !== null) {
    const countUser = new CountUp('user-count', userCount.dataset.count);
    if (!countUser.error) {
      countUser.start();
    } else {
      console.error(countUser.error);
    }

    const countPet = new CountUp('pet-count', petCount.dataset.count);
    if (!countPet.error) {
      countPet.start();
    } else {
      console.error(countPet.error);
    }

    const countPic = new CountUp('pic-count', picCount.dataset.count);
    if (!countPic.error) {
      countPic.start();
    } else {
      console.error(countPic.error);
    }
  }
}

export { counter };