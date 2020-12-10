import React from "react"

class MyClass extends React.Component {
  render() {
    const myArray = ['asdf','sdfdffd','asdfsdfd']

    return (
      <>
        {myArray.map(x => (<div key={x}>{x}</div>))}
        </>
    );
  }
}

export default MyClass
