document.addEventListener("DOMContentLoaded", () => {
  const videos = document.querySelectorAll(".Mockup-video");
  let currentVideo = 0;

  // Initially activate the first video
  videos[currentVideo].classList.add("active");
  videos[currentVideo].play();

  // Function to transition to the next video
  function playNextVideo() {
    videos[currentVideo].classList.remove("active");
    videos[currentVideo].pause();
    videos[currentVideo].currentTime = 0;

    // Move to the next video, loop back to the start if at the end
    currentVideo = (currentVideo + 1) % videos.length;

    videos[currentVideo].classList.add("active");
    videos[currentVideo].play();
  }

  // Set up an event listener for the end of each video
  videos.forEach((video) => {
    video.addEventListener("ended", playNextVideo);
  });
});
