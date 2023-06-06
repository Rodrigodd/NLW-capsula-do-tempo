import { cookies } from "next/dist/client/components/headers"
import decode from 'jwt-decode'

export interface User {
  sub: string
  name: string
  avatarUrl: string
}

export function getUser(): User | undefined {
  const token = cookies().get('token')?.value

  if (!token) {
    throw new Error('Unathorized')
  }

  try {
    const user: User = decode(token)
    return user
  } catch (e) {
    return undefined
  }
}
