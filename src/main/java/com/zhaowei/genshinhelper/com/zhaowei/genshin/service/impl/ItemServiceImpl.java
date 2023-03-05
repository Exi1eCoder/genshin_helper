package com.zhaowei.genshin.service.impl;

import com.zhaowei.genshin.entity.Item;
import com.zhaowei.genshin.mapper.ItemMapper;
import com.zhaowei.genshin.service.ItemService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 物品表 服务实现类
 * </p>
 *
 * @author zhaowei
 * @since 2023-03-05
 */
@Service
public class ItemServiceImpl extends ServiceImpl<ItemMapper, Item> implements ItemService {

}
