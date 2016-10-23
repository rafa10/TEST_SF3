<?php

namespace ArticleBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ArticlesControllerTest extends WebTestCase
{
    public function testIndex()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/');
    }

    public function testShow()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/article/{slug}');
    }

    public function testCreate()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/Create');
    }

}
