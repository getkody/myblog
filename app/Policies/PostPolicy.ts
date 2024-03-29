import { BasePolicy } from '@ioc:Adonis/Addons/Bouncer'
import User from 'App/Models/User'
import Post from 'App/Models/Post'

export default class PostPolicy extends BasePolicy {
	public async viewList() {
		return true
	}

	public async view() {
		return true;
	}

	public async create() {
		return true
	}

	public async update(user: User, post: Post) {
		return user.admin || user.id == post.userId
	}

	public async delete(user: User, post: Post) {
		return user.admin || user.id == post.userId
	}
}
