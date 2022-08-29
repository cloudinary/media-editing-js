Cloudinary Media Editing SDK
=========================
## About
The Cloudinary Media Editing SDK allows you to quickly and easily integrate your application with Cloudinary. Effortlessly edit and deliver your cloud's assets.

## Additional documentation
This Readme provides basic installation and usage information. For the complete documentation, 
see the [Media Editing SDK Guide](https://cloudinary.com/documentation/media_editing_api_sdks).

## Table of Contents
- [Key Features](#key-features)
- [Version Support](#Version-Support)
- [Installation](#installation)
- [Usage](#usage)
    - [Setup](#Setup)
    - [Create Media Source](#Create-Media-Source)
    - [Transform and Store](#Transform-and-Store)
    - [Cache warmup](#Cache-warmup)
- [Contributions](#Contributions)
- [Get Help](#Get-Help)

## Key Features
### Media Delivery API
- [CacheApi](https://cloudinary.com/documentation/media_editing_api_reference#/Cache)
- [DeliveryProfileApi](https://cloudinary.com/documentation/media_editing_api_reference#/Delivery%20Profile)
- [MappingFunctionApi](https://cloudinary.com/documentation/media_editing_api_reference#/Mapping%20Function)
- [MediaSourceApi](https://cloudinary.com/documentation/media_editing_api_reference#/Media%20Source)
- [MediaTargetApi](https://cloudinary.com/documentation/media_editing_api_reference#/Media%20Target)

### Media Editing API
- [TransformApi](https://cloudinary.com/documentation/media_editing_api_reference#transform_api)

## Version Support
| SDK Version     | node 14-16 |
|-----------------|------------|
| 0.1.0-beta & up | V          |


## Installation
```bash
npm install @cloudinary/media-editing
```
# Usage
### Setup
```js
// import the Cloudinary library
import { IConfig } from "@cloudinary/media-editing/media-delivery-api"

const configuration: IConfig = {userName: 'me_api_key', password: 'me_api_secret', basePath: 'https://api.cloudinary.com/v2/me_cloud_name'}
```

### Create Media Source
```js
import { MediaSourceApi, IConfig } from '@cloudinary/media-delivery-api';

const configuration: IConfig = {userName: 'me_api_key', password: 'me_api_secret', basePath: 'https://api.cloudinary.com/v2/me_cloud'}

const apiInstance = new MediaSourceApi(configuration);

// ID of the Media Source
const body = "1abc2def345g678hij90";

apiInstance.getMediaSource(body).then((data) => {
  console.log('API called successfully. Returned data: ' + JSON.stringify(data));
}).catch((error) => console.error(error));
```

### Transform and Store
```js
import { TransformAndStoreApi, IConfig, TransformRequest, TransformationDescriptor } from '@cloudinary/media-editing-api';

const configuration: IConfig = {userName: 'me_api_key', password: 'me_api_secret', basePath: 'https://api.cloudinary.com/v2/me_cloud'}

const apiInstance = new TransformAndStoreApi(configuration);

const { MediaSource } = TransformRequest.InputTypeEnum;
const { Named } = TransformationDescriptor.DescriptorTypeEnum;

// TransformRequest (optional)
const body:TransformRequest = {
  inputType: MediaSource,
  mediaSource: {
    id: "123456789",
    fwdKey: "sample_image"
  },
  transformationDescriptor: {
    descriptorType: Named,
    namedTransformation: "my_transformation"
  },
  mediaTarget: {
    id: "123456789",
    fwdKey: "images/transformed_sample_image"
  }
};

apiInstance.transformAndStore(body).then((data) => {
  console.log('API called successfully. Returned data: ' + JSON.stringify(data));
}).catch((error) => console.error(error));
```


### Cache warmup
```js
import { CacheApi, IConfig, CacheWarmupRequestPayload } from '@cloudinary/media-delivery-api';

const configuration: IConfig = {userName: 'me_api_key', password: 'me_api_secret', basePath: 'https://api.cloudinary.com/v2/me_cloud'}

const apiInstance = new CacheApi(configuration);

// Payload to warm up the cache
const body:CacheWarmupRequestPayload = {
    url: "https://me_cloud.media.cloudinary.net/c_fill,h_150,w_150/r_20/e_sepia/assets/images/image.jpg",
    notificationUrl: "https://mywebhook.com/webhook",
  };

apiInstance.warmup(body).then((data) => {
  console.log('API called successfully. Returned data: ' + JSON.stringify(data));
}).catch((error) => console.error(error));
```

## Get Help
If you run into an issue or have a question, you can either:
- Issues related to the SDK: [Open a Github issue](https://github.com/cloudinary/media-editing-js/issues)
- Issues related to your account: [Open a support ticket](https://cloudinary.com/contact)

## Additional Resources
- [Cloudinary Transformation and REST API References](https://cloudinary.com/documentation/cloudinary_references): Comprehensive references, including syntax and examples for all SDKs.
- [MediaJams.dev](https://mediajams.dev/): Bite-size use-case tutorials written by and for Cloudinary Developers
- [DevJams](https://www.youtube.com/playlist?list=PL8dVGjLA2oMr09amgERARsZyrOz_sPvqw): Cloudinary developer podcasts on YouTube.
- [Cloudinary Academy](https://training.cloudinary.com/): Free self-paced courses, instructor-led virtual courses, and on-site courses.
- [Code Explorers and Feature Demos](https://cloudinary.com/documentation/code_explorers_demos_index): A one-stop shop for all code explorers, Postman collections, and feature demos found in the docs.
- [Cloudinary Roadmap](https://cloudinary.com/roadmap): Your chance to follow, vote, or suggest what Cloudinary should develop next.
- [Cloudinary Facebook Community](https://www.facebook.com/groups/CloudinaryCommunity): Learn from and offer help to other Cloudinary developers.
- [Cloudinary Account Registration](https://cloudinary.com/users/register/free): Free Cloudinary account registration.
- [Cloudinary Website](https://cloudinary.com)


## Licence
Released under the MIT license.
