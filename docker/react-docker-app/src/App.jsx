import { useState } from 'react'
import './App.css'

function App() {
  const [count, setCount] = useState(0)

  return (
    <div style={{ textAlign: 'center', padding: '4rem', fontFamily: 'sans-serif' }}>
      <h1>My Docker App</h1>
      <p>Served by <strong>Nginx</strong> via Multi-Stage Docker Build</p>

      <button onClick={() => setCount(count + 1)}
        style={{
          marginTop: '2rem',
          padding: '10px 28px',
          fontSize: '16px',
          borderRadius: '8px',
          border: '1px solid #646cff',
          background: '#646cff',
          color: 'white',
          cursor: 'pointer'
        }}>
        Clicked {count} times
      </button>
    </div>
  )
}

export default App
