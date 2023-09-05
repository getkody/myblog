import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'

export default class Active {
  public async handle({ auth, response }: HttpContextContract, next: () => Promise<void>) {
    if (auth.user && !auth.user.active) {
      response.unauthorized({ error: 'You are not active.' })

      return
    }
    
    await next()
  }
}
