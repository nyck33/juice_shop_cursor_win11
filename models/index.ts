/*
 * Copyright (c) 2014-2023 Bjoern Kimminich & the OWASP Juice Shop contributors.
 * SPDX-License-Identifier: MIT
 */

import { AddressModelInit } from './address'
import { BasketModelInit } from './basket'
import { BasketItemModelInit } from './basketitem'
import { CaptchaModelInit } from './captcha'
import { CardModelInit } from './card'
import { ChallengeModelInit } from './challenge'
import { ComplaintModelInit } from './complaint'
import { DeliveryModelInit } from './delivery'
import { FeedbackModelInit } from './feedback'
import { ImageCaptchaModelInit } from './imageCaptcha'
import { MemoryModelInit } from './memory'
import { PrivacyRequestModelInit } from './privacyRequests'
import { ProductModelInit } from './product'
import { QuantityModelInit } from './quantity'
import { RecycleModelInit } from './recycle'
import { relationsInit } from './relations'
import { SecurityAnswerModelInit } from './securityAnswer'
import { SecurityQuestionModelInit } from './securityQuestion'
import { UserModelInit } from './user'
import { WalletModelInit } from './wallet'

/* jslint node: true */

import {config} from 'dotenv'
config()

//const Sequelize = require('sequelize')
import {Sequelize} from 'sequelize'

/*
const sequelize = new Sequelize('database', 'username', 'password', {
  dialect: 'sqlite',
  retry: {
    match: [/SQLITE_BUSY/],
    name: 'query',
    max: 5
  },
  transactionType: 'IMMEDIATE',
  storage: 'data/juiceshop.sqlite',
  logging: false
})
*/
const sequelize = new Sequelize(process.env.DB_NAME || 'database', process.env.DB_USER || 'myuser', process.env.DB_PASS || 'mypassword', {
  host: process.env.DB_HOST || 'localhost',
  dialect: 'postgres',
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});


AddressModelInit(sequelize)
BasketModelInit(sequelize)
BasketItemModelInit(sequelize)
CaptchaModelInit(sequelize)
CardModelInit(sequelize)
ChallengeModelInit(sequelize)
ComplaintModelInit(sequelize)
DeliveryModelInit(sequelize)
FeedbackModelInit(sequelize)
ImageCaptchaModelInit(sequelize)
MemoryModelInit(sequelize)
PrivacyRequestModelInit(sequelize)
ProductModelInit(sequelize)
QuantityModelInit(sequelize)
RecycleModelInit(sequelize)
SecurityAnswerModelInit(sequelize)
SecurityQuestionModelInit(sequelize)
UserModelInit(sequelize)
WalletModelInit(sequelize)

relationsInit(sequelize)

export { sequelize }
