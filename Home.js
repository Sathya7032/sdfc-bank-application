import React from 'react'
import './Home.css'
import Image from './image.jpg'


const Home = () => {
  return (
    <div>
      <center>
        <div class="p-5 bg-primary text-white text-center">
          <h1>CODE MAMA</h1>
          <p>Ne kante thop evadu leru ekkada ne code ki nuve hero.......</p> 
        </div>
        <div> 
            
            <div class="hero">
                <h2>LEARN TO CODE WITH MEME CONTENT</h2>
                <p>Learning should be with intrest and enthisuiaism not like AREY ENTI RA EDHI..</p>
                <div>
               
                </div>
                <a href="Content"><button class="btn btn-success">click here for contents</button></a><br/><br/>
                <a href="Login"><button class="btn btn-success">Login</button></a>
            </div>
            <div>
              <img src={Image} height="700px" width="1350px"></img>
            </div>
            <div style={{backgroundColor:'skyblue'}}>
              <h2>THANK YOU FOR VISITING</h2><br/>
              <p>lorem15
              </p>
            </div>
        </div>
      </center>
    </div>
  )
}

export default Home
