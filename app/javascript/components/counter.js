import { CountUp } from 'countup.js';

const counter = () => {
  const userCount = document.getElementById("user-count");
  const petCount = document.getElementById("pet-count");
  const picCount = document.getElementById("pic-count");

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

export { counter };