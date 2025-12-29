exports.handler = async (event) => {
    console.log('Lambda 1 received event:', JSON.stringify(event, null, 2));
    
    const response = {
        statusCode: 200,
        body: JSON.stringify({
            message: 'Hello from Lambda 1!',
            timestamp: new Date().toISOString(),
            function: 'lambda1'
        }),
    };
    
    return response;
};
