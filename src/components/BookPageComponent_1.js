import { Button } from "react-bootstrap";
import AudioPlayer, { RHAP_UI } from "react-h5-audio-player";
import { Link } from "react-router-dom";

export default function BookPageComponent(props) {
  console.log(props);
  return (
    <>
      <div
        className="content"
        
      >
        <div className="reproductor "
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
          <AudioPlayer
            /* autoPlay */
            showJumpControls={false}
            customAdditionalControls={[]}
            layout="stacked-reverse" /* */
            customProgressBarSection={
              [
                RHAP_UI.VOLUME,
                RHAP_UI.PROGRESS_BAR,
                RHAP_UI.LOOP,
              ]
            }
            customVolumeControls={[]}
            src={props.audio.file}
            /* customIcons={{
              play: Envelope
            }} */
          />
          <Button
            as={Link}
             to={`/${props.header.cuento}/${props.header.pagSig}`} 
            className={
              props.header.sigDisabled ? "btn-sig disabled-link" : "btn-sig"
            }/**/
          ></Button>
        </div>
        {/* <div className="imagen" style={{
          backgroundImage: `url(${props.backgroundImage})`,
        }}></div> */}
        <div className="carillas">
          {props.texto.length > 0 &&
            props.texto.map((t) => {
              return (
                <>
                <p dangerouslySetInnerHTML={{ __html: t.text }}></p>
                {/* <div className={"text-content " + t.estilo + " " + t.ubicacion}> 
                  <p dangerouslySetInnerHTML={{ __html: t.text }}></p>*/}
                  {/*  {t.parr.map((p) => {
                      const text = p.text;
                      return <p dangerouslySetInnerHTML={{ __html: text }}></p>;
                    })} 
                </div>*/}
                </>
              );
            })}
        </div>
        {/*<div className={"reproductor " + props.audio.ubicacion}>
           <AudioPlayer
            autoPlay 
            showJumpControls={false}
            customAdditionalControls={[]}
            layout="horizontal"
            src={props.audio.file}*/
            /* customIcons={{
              play: Envelope
            }} 
          />
        </div>*/}
      </div>
      
    </>
  );
}
