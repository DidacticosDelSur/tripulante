//import { type NextPage } from "next";
import React, { useRef, useState } from "react";
import { Image } from "react-bootstrap";
import { Play, Speaker } from "react-bootstrap-icons";
/* import { SpeakerWaveIcon } from "@heroicons/react/24/outline";
import { PlayIcon, PauseIcon } from "@heroicons/react/20/solid";
import Image from "next/image"; */
import './AudioPlayer.scss';

const sound = {
  title: "Card Title",
  waveType: "Ocean.mp3",
  imageUrl: "https://diegofernandez.org/tripulante/images/Caperucita/CaperucitaYElLobo-01.png",
};

function AudioPlayer(){
  /* const [play, setPlay] = useState(false);
  const oceanRef = useRef<HTMLAudioElement>(null);
  const MAX = 20;

  function toggleAudio(): void {
    if (play) {
      oceanRef.current?.pause();
      setPlay(false);
    } else {
      void oceanRef.current?.play();
      setPlay(true);
    }
  }

  function handleVolume(e: React.ChangeEvent<HTMLInputElement>): void {
    const { value } = e.target;
    const volume = Number(value) / MAX;
    oceanRef.current.volume = volume;
  } */

  return (
    <>
      <main className="main">
        <div className="main-content">
          <div className="image-content space-y-0">
            <Image
              width={650}
              height={450}
              className="mx-auto max-h-48 w-full flex-shrink-0 rounded-t-lg pb-2"
              src={sound.imageUrl}
              alt="waves"
            />
            <button
              /* onClick={toggleAudio} */
              type="button"
              className="play absolute right-5 left-0 top-[15%] m-auto w-9 rounded-full p-2 text-white shadow-sm"
            >
              {/* {!play ? ( 
                <Play className="h-12 w-12" aria-hidden="true" />*/}
             {/*  ) : (
                <PauseIcon className="h-12 w-12" aria-hidden="true" />
              )} */}
            </button>
            <dl className="mt-1 flex flex-col p-4 ">
              <dd className="text-lg text-white">{sound.title}</dd>
            </dl>
            <div className="mx-4 flex">
              <input
                type="range"
                className="volumen-input mr-2 w-full accent-cyan-700"
                min={0}
                /* max={MAX} */
                /* onChange={(e) => handleVolume(e)} */
              />
              <div className="volumen-input"></div>
              <Speaker
                className="h-5 w-5 text-white"
                aria-hidden="true"
              />
            </div>
          </div>
        </div>
        {/* <audio ref={oceanRef} loop src={"/Ocean.mp3"} /> */}
      </main>
    </>
  );
};

export default AudioPlayer;