import React, {useState, useEffect} from 'react';

import DropComponent from './components/DropComponent/DropComponent'
import DataReader from './services/DataReader';

import './App.scss';

function App() {

  const tableSelections = [
                            {
                              tableNumber: 1,
                              activeItemID: null,
                            },
                            {
                              tableNumber: 2,
                              activeItemID: null,
                            },
                            {
                              tableNumber: 3,
                              activeItemID: null,
                            }                         
                          ]

  const [state, setState] = useState(tableSelections)
  const [filteredItems, setFilteredItems] = useState(null)

  useEffect(()=>{
    if(state[0].activeItemID){
      DataReader(null, 
                'POST', 
                [state[0].activeItemID,state[1].activeItemID,state[2].activeItemID])
                .then(result =>setFilteredItems(result))
    }
    if(!state[0].activeItemID){
      setFilteredItems(null)
    }

  },[state])

  function changeItem(id, table){
    setState(prevState => prevState.map((item)=> {
      if(table === item.tableNumber){
        return {...item, activeItemID: id}
      }
      return item})
      )
  }
  
  return (
    <div className="App">
      {
      state.map(table => {
        return (
          <DropComponent
          key={table.tableNumber}
          tableNumber={table.tableNumber}
          changeItem={changeItem}
          activeItemID={table.activeItemID}
          />
        )
      })
      }
      <div className="App__content">
        <ol>
          {
            filteredItems ?
            filteredItems.items.map(item=>{
              return(
                <li key={item.ID}>{item.DEVICE_NAME_ID}</li>
              )
            })
            : null
          }
        </ol>
        
      </div>
    </div>
  );
}

export default App;
