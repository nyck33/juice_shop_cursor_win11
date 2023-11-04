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

import {config} from 'dotenv'
config()

import {Sequelize} from 'sequelize'

const sequelize = new Sequelize(process.env.DB_NAME || 'juiceshop_db', process.env.DB_USER || 'postgres', process.env.DB_PASS || 'password123!', {
  host: process.env.DB_HOST || 'localhost',
  dialect: 'postgres',
  logging: console.log,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});


const connectWithRetry = async () => {
  return new Promise(resolve => {
    sequelize.authenticate()
      .then(() => {
        console.log('Database connection has been established successfully.');
        resolve(true);
      })
      .catch(err => {
        console.error('Unable to connect to the database:', err);
        console.log('Retrying in 5 seconds...');
        setTimeout(connectWithRetry, 5000);
      });
  });
};

(async () => {
  await connectWithRetry();

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
})();

export { sequelize }