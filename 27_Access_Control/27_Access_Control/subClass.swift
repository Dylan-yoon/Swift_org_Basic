//
//  subClass.swift
//  27_Access_Control
//
//  Created by Byunghee Yoon on 2022/08/22.
//

import Foundation

//Class

public class PublicClass {}

internal class InternalClass {}

open class OpenClass {}

fileprivate class FileprivateClass {}
struct FileprivateClass2 {} //fileprivate가 기본

private class PrivateClass {}

//Struct

public struct PublicStruct {}

internal struct InternalStruct {}

fileprivate struct FileprivateStruct {}
struct FileprivateStruct2 {} //fileprivate가 기본

private struct PrivateStruct {}

//open struct는 사용 할 수 없다. open 은 Class에 한해서 가능
//open struct OpenStruct {}
