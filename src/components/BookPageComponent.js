import AudioPlayer from "react-h5-audio-player";

export default function BookPageComponent(props) {
  return (
    <>
      <div
        className="content"
        style={{
          backgroundImage: `url(${props.backgroundImage})`,
        }}
      >
        <div className="carillas">
          {props.texto.length > 0 &&
            props.texto.map((t) => {
              return (
                <div className={"text-content " + t.estilo + " " + t.ubicacion}>
                  <p dangerouslySetInnerHTML={{ __html: t.text }}></p>
                  {/*  {t.parr.map((p) => {
                      const text = p.text;
                      return <p dangerouslySetInnerHTML={{ __html: text }}></p>;
                    })} */}
                </div>
              );
            })}
        </div>
        <div className={"reproductor " + props.audio.ubicacion}>
          <AudioPlayer
            autoPlay
            showJumpControls={false}
            customAdditionalControls={[]}
            layout="horizontal"
            src={props.audio.file}
          />
        </div>
      </div>
    </>
  );
}
