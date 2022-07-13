Cloudinary Media Editing SDK
=========================
## About
The Cloudinary Media Editing SDK allows you to quickly and easily integrate your application with Cloudinary.
Effortlessly edit and deliver your cloud's assets.

## Installation
```bash
npm install @cloudinary/media-editing
```
# Usage
### Setup
```js
// import the Cloudinary library
import {IConfig, MappingFunctionApi} from "@cloudinary/media-editing/media-delivery-api"

const configuration: IConfig = {userName: '<userName>', password: '<password>', basePath: '<basePath>'}
const apiInstance = new MappingFunctionApi(configuration);

apiInstance.getMappingFunctions().then((data:any) => {
    console.log('API called successfully. Returned data: ' + JSON.stringify(data));
}).catch((error:any) => console.error(error));

```

# APIS
###Media Delivery API
* [CacheApi](https://github.com/cloudinary/media-delivery-api-js/blob/master/CacheApi.md)    
* [DeliveryProfileApi](https://github.com/cloudinary/media-delivery-api-js/blob/master/DeliveryProfileApi.md)
* [MappingFunctionApi](https://github.com/cloudinary/media-delivery-api-js/blob/master/MappingFunctionApi.md)
* [MediaSourceApi](https://github.com/cloudinary/media-delivery-api-js/blob/master/MediaSourceApi.md)
* [MediaTargetApi](https://github.com/cloudinary/media-delivery-api-js/blob/master/MediaTargetApi.md)

###Media Editing API
* [TransformApi](https://github.com/cloudinary/media-editing-api-js/blob/master/TransformApi.md)
