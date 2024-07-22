import { Component } from "react";
import AudioPlayer from "react-h5-audio-player";
import { tresChanchitos } from "../assets/tresChanchitos";

class BookPageComponent extends Component {
  //atributos de este componente: BackgrondImg - texto - audio
  constructor(props) {
    super(props);
    console.log("Constructor", props);
    this.state = {
      backgroundImage: "",
      texto: [],
      audio: {},
    };
    this.updatePageData = this.updatePageData.bind(this);
  }
  componentDidMount() {
    console.log("Mount", this.props);
    this.updatePageData();
  }
  componentDidUpdate() {
    console.log("Updated", this.props);
    this.updatePageData();
  }
  updatePageData() {
    if (this.props.pag > 0) {
      let data = tresChanchitos[this.props.pag - 1];
      this.state.backgroundImage = data.background;
    }
    console.log("updatingData", this.state);
  }
  render() {
    return (
      <>
        <div
          className="content"
          style={{
            backgroundImage: `url(${this.state.backgroundImage})`,
          }}
        >
          <div className="carillas">
            {this.props.texto.length > 0 &&
              this.props.texto.map((t) => {
                return (
                  <div
                    className={
                      "text-content " + t.colorText + " " + t.ubicacion
                    }
                  >
                    {t.parr.map((p) => {
                      const text = p.text;
                      return <p dangerouslySetInnerHTML={{ __html: text }}></p>;
                    })}
                  </div>
                );
              })}
          </div>
          <div className={"reproductor " + this.props.audio.ubicacion}>
            <AudioPlayer
              autoPlay
              showJumpControls={false}
              customAdditionalControls={[]}
              layout="horizontal"
              src={this.props.audio.file}
            />
          </div>
        </div>
      </>
    );
  }
}

export default BookPageComponent;
