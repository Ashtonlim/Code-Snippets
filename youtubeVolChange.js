const videoElement = document.querySelector("video");
const audioCtx = new AudioContext();
const source = audioCtx.createMediaElementSource(videoElement);
const gainNode = audioCtx.createGain();
gainNode.gain.value = 2; // double the volume
source.connect(gainNode);
gainNode.connect(audioCtx.destination);
