exports.handler = async (event) => {
    console.log('Lambda 2 received event:', JSON.stringify(event, null, 2));
    
    const response = {
        statusCode: 200,
        body: JSON.stringify({
            message: 'Hello from Lambda 2!',
            timestamp: new Date().toISOString(),
            function: 'lambda2'
        }),
    };
    
    return response;
};
