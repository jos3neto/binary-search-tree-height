//
//  BST_height.swift
//  
//
//  Created by Jose on 7/7/19.
//

import Foundation

class Node
{
	var data: Int
	var left: Node?
	var right: Node?
	
	init(data: Int)
	{
		self.data = data
	}
}

func isLeaf(_ node: Node) -> Bool
{
	return node.left==nil && node.right==nil
}

func getHeight(root: Node!) -> Int
{
	if root == nil || isLeaf(root)
	{
		return 0
	} else
	{
		return 1 + max(getHeight(root: root.left), getHeight(root: root.right))
	}
}
