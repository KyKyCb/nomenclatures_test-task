import React, {useState, useEffect, useRef} from 'react'

import arrow from "../../img/Vector_1.svg"
import './DropComponent.scss'

import DataReader from '../../services/DataReader'

export default function DropComponent (props){

const [state, setState] = useState(null)

useEffect(()=>{
    DataReader(props.tableNumber, 'GET').then(result => setState(result))
},[props.tableNumber])

const changeItem = useRef()
const itemSelect = useRef()

 function itemSelectionHandler(){
    changeItem.current.classList.toggle('__active')
    document.body.addEventListener('click', itemWindowPopup)
}

function itemWindowPopup(e){
    const path = e.path || (e.composedPath && e.composedPath())
    if(!path.includes(itemSelect.current) && !path.includes(changeItem.current)){
        changeItem.current.classList.remove('__active')
        document.body.removeEventListener('click', itemWindowPopup)
    }    
}

function itemSwitch(id, table){
    props.changeItem(id, table)
    document.body.removeEventListener('click', itemWindowPopup)
}

return (    
    <div>
        <p>Выберите элемент №{props.tableNumber}</p>
        <div 
        ref={changeItem} 
        className = 'nomenclature__item-selection ' 
        onClick ={itemSelectionHandler}>
            
            <div className = 'selection_main'>
                <span>
                    {   state ?
                        (props.activeItemID ? 
                        state.items.filter(item=> 
                            (item.id ? item.id : item.ID) === String(props.activeItemID)).map(filteredItem =>{
                                return (
                                    filteredItem.NAME ? filteredItem.NAME : filteredItem.name_ru
                                )
                            })
                        : '----------')
                        : null
                    }
                </span>
                <span><img src = {arrow} alt = 'arrow'/></span>
            </div>
            <div ref = {itemSelect} className = 'selection_sub'>
                
                <div className = 'selection_items'>
                    <p 
                    onClick = {()=>itemSwitch(null, props.tableNumber)}
                    >----------</p>
                    {   
                        state ?
                            state.items.map(item => 
                                {
                                return (
                                    <p 
                                    key={item.id ? item.id : item.ID}
                                    onClick = {()=>itemSwitch((item.id ? item.id : item.ID), props.tableNumber)}
                                    >
                                        {item.name_ru ? item.name_ru : item.NAME}
                                    </p>
                                ) 
                                })
                        : null
                    }
                    
                </div>
            </div>
        </div>
    </div>   
)
}