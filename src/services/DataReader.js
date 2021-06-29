const DataReader = async(num, method, object)=>
    {
        if(method === 'GET'){
        const response = await fetch(`http://nomenclatures.test/back.php?table=${num}`);
            if (!response.ok){
                throw new Error(`Could not fetch, server recived ${response.status}`)
            }
        const result = await response.json()
        return result
        }
        if(method === 'POST'){
            const response = await fetch('http://nomenclatures.test/back.php', 
            {
                method: method,
                body: JSON.stringify(object),
                headers: {
                'Content-Type': 'application/json'
                }
            });
            if (!response.ok){
                throw new Error(`Could not fetch, server recived ${response.status}`)
            }
            const result = await response.json()
            return result
        }
    }

    export default DataReader