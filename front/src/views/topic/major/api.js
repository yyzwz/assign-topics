import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

export const getMajorOne = (params) => {
    return getRequest('/major/getOne', params)
}
export const getMajorList = (params) => {
    return getRequest('/major/getByPage', params)
}
export const getMajorCount = (params) => {
    return getRequest('/major/count', params)
}
export const addMajor = (params) => {
    return postRequest('/major/insert', params)
}
export const editMajor = (params) => {
    return postRequest('/major/update', params)
}
export const addOrEditMajor = (params) => {
    return postRequest('/major/insertOrUpdate', params)
}
export const deleteMajor = (params) => {
    return postRequest('/major/delByIds', params)
}