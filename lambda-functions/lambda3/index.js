const { S3Client, ListBucketsCommand } = require('@aws-sdk/client-s3');

exports.handler = async (event) => {
    console.log('Lambda 3 received event:', JSON.stringify(event, null, 2));
    
    const s3Client = new S3Client({});
    
    try {
        const command = new ListBucketsCommand({});
        const data = await s3Client.send(command);
        
        console.log('S3 Buckets:', data.Buckets.map(b => b.Name));
        
        const response = {
            statusCode: 200,
            body: JSON.stringify({
                message: 'Hello from Lambda 3 with S3 access!',
                timestamp: new Date().toISOString(),
                function: 'lambda3',
                bucketsCount: data.Buckets.length
            }),
        };
        
        return response;
    } catch (error) {
        console.error('Error accessing S3:', error);
        
        return {
            statusCode: 500,
            body: JSON.stringify({
                message: 'Error accessing S3',
                error: error.message
            }),
        };
    }
};
