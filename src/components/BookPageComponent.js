import { Button } from "react-bootstrap";
import AudioPlayer, { RHAP_UI } from "react-h5-audio-player";
import { Link } from "react-router-dom";
import { isMobile } from "react-device-detect";

export default function BookPageComponent(props) {
  console.log(props);
  return (
    <>
      <div className="content">
        <div className="reproductor" 
          style={{
            backgroundImage: `url(${props.backgroundImage})`,
          }}>
          <Button
            as={Link}
            to={`/${props.header.cuento}/${props.header.pagAnt}`} 
            className={
              props.header.antDisabled ? "btn-ant disabled-link" : "btn-ant"
            }
          ></Button>
          {isMobile && 
            <AudioPlayer
              autoPlay
              showJumpControls={false}
              customAdditionalControls={[]}
              layout="stacked-reverse"
              customProgressBarSection={
                [
                  RHAP_UI.PROGRESS_BAR,
                ]
              }
              customVolumeControls={[]}
              src={props.audio.file}
            />
          }
          { !isMobile && 
            <AudioPlayer
              autoPlay
              showJumpControls={false}
              customAdditionalControls={[]}
              layout="stacked-reverse"
              customProgressBarSection={
                [
                  RHAP_UI.VOLUME,
                  RHAP_UI.PROGRESS_BAR,
                ]
              }
              customVolumeControls={[]}
              src={props.audio.file}
            />
          }

          <Button
            as={Link}
             to={`/${props.header.cuento}/${props.header.pagSig}`} 
            className={
              props.header.sigDisabled ? "btn-sig disabled-link" : "btn-sig"
            }
          ></Button>
        </div>
        <div className="carillas">
          {props.texto.length > 0 &&
            props.texto.map((t) => {
              return (
                <p dangerouslySetInnerHTML={{ __html: t.text }}></p>
              );
            })}
        </div>
      </div>
    </>
  );
}
